# Reduktionsregeln Cheatsheet

Dieses Repository enthält das LaTeX Cheatsheet zu den Reduktionsregeln der
Racket-Lehrsprache "Schreibe dein Programm". Das Dokument wurde ursprünglich für die
Vorlesung "Praktische Informatik 1: Funktionale Programmierung" bei Prof. Torsten Grust im
Wintersemester 2022 entwickelt und 2024 aktualisiert.

## Überblick

Das Cheatsheet bietet eine übersichtliche Zusammenfassung der Reduktionsregeln, die in der
Vorlesung behandelt werden. Es dient als schnelle Referenz für Studierende beim Lösen von
Aufgaben und zur Vorbereitung auf Prüfungen.

## Voraussetzungen

Um das PDF erfolgreich zu erstellen, werden folgende Komponenten benötigt:

- Eine aktuelle TeX Live Distribution mit XeLaTeX
- `make` (für die Verwendung des Makefiles)
- Python mit Pygments (für das minted-Paket)

### Benötigte LaTeX-Pakete

- Grundlegende Pakete:
  - `geometry`, `enumitem`, `babel` (mit ngerman), `hyperref`, `amsmath`, `amssymb`, `graphicx`
- Schriftarten:
  - `fontspec`, FiraSans, `newtxsf`, Fira Code (als Monospace-Font)
- Code-Darstellung:
  - `minted`, `xcolor`
- Layout und Design:
  - `tcolorbox`, `tikz`, `fancyhdr`, `float`, `algorithm2e`, `adjustbox`, `todonotes`

## Verzeichnisstruktur

```
.
├── main.tex
├── Makefile
├── README.md
└── settings.tex
```

## Verwendung

### PDF erstellen

Um das PDF zu generieren, führen Sie einfach folgenden Befehl aus:

```bash
make
# oder
make all
```

Das resultierende PDF erscheint im Hauptverzeichnis.

### Aufräumen

Um generierte build Dateien und temporäre LaTeX-Ausgaben zu entfernen:

```bash
make clean
```

## Inhalt

Das Cheatsheet umfasst alle Regeln für:
1. Literale
2. Lambda-Abstraktionen
3. Identifier
4. Applikation
5. Fallunterscheidungen

Sowie das _entzuckern_ von `if`, `and` und `or`.

## Wartung und Aktualisierung

Die Hauptdateien des Projekts sind:
- `main.tex`: Hauptdokument mit dem Inhalt
- `settings.tex`: Dokumenteneinstellungen, Pakete und benutzerdefinierte Befehle
- `Makefile`: Build-Automatisierung

## Lizenz

Dieses Projekt steht unter der CC BY-NC 4.0 Lizenz. Sie können es frei verwenden, modifizieren und
verteilen, solange Sie die Ursprungsquelle nennen und es nicht kommerzialisieren. Das
Cheatsheet wird As-is bereitgestellt und es wird auch keine Haftung übernommen.

## Kontakt

Bei Fragen, Verbesserungsvorschlägen oder Fehlermeldungen können Sie gerne ein Issue im
Repository erstellen.

## Changelog

### Version 2024
- Aktualisierung der Beispiele
- Verbesserung des Layouts
- Korrektur von Tippfehlern

### Version 2022
- Erste Version des Cheatsheets
