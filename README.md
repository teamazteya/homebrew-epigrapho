# Epigrapho para Homebrew

Instala [Epigrapho](https://github.com/teamazteya/epigrapho), la app de notas que entiende referencias bíblicas, en macOS 11 o posterior (Apple Silicon o Intel):

```bash
brew install --cask teamazteya/epigrapho/epigrapho
```

Actualizar y desinstalar:

```bash
brew upgrade --cask epigrapho
brew uninstall --cask epigrapho          # conserva tus notas
brew uninstall --cask --zap epigrapho    # borra también tus datos
```

La app todavía no está firmada por Apple: la primera vez que la abras, macOS la bloqueará. Permítela una vez en Ajustes del Sistema → Privacidad y seguridad → **Abrir de todos modos**.

## Publicar una versión nueva

1. Sube `epigrapho_mac_arm64.zip` y `epigrapho_mac_x64.zip` a [SourceForge](https://sourceforge.net/projects/epigrapho/files/) con esos nombres.
2. En `Casks/epigrapho.rb`, actualiza `version` y los dos `sha256` (`shasum -a 256 epigrapho_mac_*.zip`).
