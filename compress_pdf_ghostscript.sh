#! /bin/sh
#
# ghostscript_compress.sh
# Copyright (C) 2016 Joachim Muth <joachim.henri.muth@gmail.com>
#
# Distributed under terms of the MIT license.
#

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=notes-compressed.pdf notes.pdf

