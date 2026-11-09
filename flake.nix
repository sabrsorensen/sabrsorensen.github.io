{
  description = "Dev shell for sabrsorensen.github.io (Jekyll / GitHub Pages)";

  inputs.nixpkgs.url = "https://flakehub.com/f/DeterminateSystems/nixpkgs-weekly/0.1";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          # Jekyll and its plugins come from the `github-pages` gem (see Gemfile)
          # so local builds match what GitHub Pages runs. nixpkgs' jekyll lacks
          # Pages-default plugins such as jekyll-remote-theme and
          # jekyll-titles-from-headings.
          packages = with pkgs; [
            ruby
            bundler
            pkg-config
            libffi
            libyaml
            openssl
            zlib
          ];

          shellHook = ''
            export BUNDLE_PATH="$PWD/vendor/bundle"

            if ! bundle check >/dev/null 2>&1; then
              echo "Run 'bundle install' to install Jekyll and the GitHub Pages plugins."
            fi
            echo "Serve locally with: bundle exec jekyll serve --livereload"
          '';
        };
      });

      formatter = forAllSystems (pkgs: pkgs.nixfmt);
    };
}
