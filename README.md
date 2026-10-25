# Homebrew Tap · jzes

Fórmulas Homebrew mantidas por [jzes](https://github.com/jzes).

## Morse

[Morse](https://github.com/jzes/morse) é um decoder de código Morse para o terminal, escrito em Go.

### Instalar

Com o [Homebrew](https://brew.sh) instalado:

```sh
brew install jzes/tap/morse
morse '... --- ...'
# sos
```

A fórmula instala os binários das releases oficiais e verifica seu SHA-256. Não é necessário instalar Go.

| Sistema | Arquiteturas |
| --- | --- |
| macOS | Apple Silicon (`arm64`) e Intel (`amd64`) |
| Linux | ARM64 (`arm64`) e x86-64 (`amd64`) |

### Atualizar

```sh
brew update
brew upgrade jzes/tap/morse
```

### Testar

```sh
brew test jzes/tap/morse
```

## Manutenção

A atualização da fórmula é manual, após a publicação de uma versão estável no [repositório do Morse](https://github.com/jzes/morse/releases).

1. Atualize `version` em `Formula/morse.rb`.
2. Atualize as quatro URLs para a nova tag e os quatro hashes `sha256`, de acordo com o `checksums.txt` da release. Baixe os arquivos e confira seus hashes antes de publicar.
3. Verifique a fórmula e execute o teste no sistema disponível:

   ```sh
   brew style jzes/tap/morse
   brew audit --strict jzes/tap/morse
   brew reinstall jzes/tap/morse
   brew test jzes/tap/morse
   ```

4. Commit e push das alterações neste repositório tornam a atualização disponível no próximo `brew update` dos usuários.

Pré-releases não são publicadas nesta fórmula.

## Licença

Este tap é distribuído sob a [licença MIT](LICENSE). O Morse também usa a [licença MIT](https://github.com/jzes/morse/blob/main/LICENSE).
