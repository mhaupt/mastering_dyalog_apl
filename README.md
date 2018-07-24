# Overview

This repository contains results and oddbits from my journey through Bernard
Legrand's book _Mastering Dyalog APL_. The book is available for free as a [PDF
download from
Dyalog](https://www.dyalog.com/uploads/documents/MasteringDyalogAPL.pdf). The
files accompanying the book, which I will not include in this repository in
their original form but only with the changes I made, are also available as a
free [ZIP
file](https://www.dyalog.com/uploads/files/MasteringDyalogAPL_CompanionFiles.zip).

Errata for the book can be found [on Dyalog's web
pages](https://www.dyalog.com/mastering-dyalog-apl-errata.htm).

## Environment Preparation

Set the `WSPATH` environment variable to point to the directory in which Dyalog
should look to find and save workspaces. For instance (on a Mac),

    export WSPATH=/Users/.../mastering_dyalog_apl/workspaces

This can be set in a custom file `~/.dyalog/dyalog.config`. See the example
setting in that file (it will be created upon first startup of Dyalog).

In chapter D.6, the variable `MyPath` is used to point to the directory where
the companion files (e.g., text files and spreadsheets) can be found. This
directory can also be set as, e.g., `MY_PATH` in `dyalog.config`, and then
pulled in to the workspace using `MyPath ← 2 ⎕NQ '.' 'GetEnvironment'
'MY_PATH'`.

Some additional instructions for installing and configuring Dyalog can be found
in [this PDF
file](http://docs.dyalog.com/14.1/Dyalog%20APL%20for%20Mac%20OS%20Installation%20and%20Configuration%20Guide.pdf),
which is targeted towards Dyalog 14.1, but still appears to be largely correct
for Dyalog 16.0, which is the version of Dyalog I used.

## Fonts and Keyboard Layouts

Unicode fonts for APL can be [downloaded from
Dyalog](http://www.dyalog.com/apl-font-keyboard.htm).

The same page also provides keyboard layouts. [This example for Mac (UK
layout)](https://www.dyalog.com/uploads/files/download.php?file=DyalogAltUK.zip)
can be installed by copying the contents of the ZIP file to `/Library/Keyboard
Layouts` and activating the new layout via system control.

## Workspaces

All workspaces used during working my way through the book are placed in the
`workspaces` directory in this repository. The workspace `journey.dws` is
derived from the workspace `DyalogTutor_EN.dws`.

## Licence

The companion files provided by Dyalog are available under the terms and
conditions of the [MIT Licence](https://opensource.org/licenses/MIT), and so are
the files provided here.

