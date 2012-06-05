NewGRF build makefile
-----------------------------------

Contents:

1 About
2 Usage and Parameters
3 Obtaining the source
4 Credits
5 License



-------
1 About
-------

This is a repository suitable as sub repository for the build framework of NewGRF projects

Name of this Repo:  Makefile for NML: common part
Repository version: {{REPO_REVISION}}



----------------------
2 Usage
----------------------

Makefile.nml
	Target 'nml'
    Building the overall nml file from all source files
Makefile.grf
	Targets 'grf', 'md5'
    Building the grf from the overall nml file
Makefile.all
	Target 'all'
	Primary target of the makefile
Makefile.bundle
	Targets 'bundle', 'bundle_tar', 'bundle_zip', 'bundle_xz', 'bundle_bz2', 'bundle_gzip'
	Building the distribution tar with license and documentation in a single download
Makefile.bundlesrc
	Targets 'bundle_src'
	Building the source distribution bundle
Makefile.doc
	Target 'docs'
	Building the documentation files, usually license.txt, readme.txt and changelog.txt
Makefile.install
	Target 'install'
	Installs the grf in OpenTTD's NewGRF dir
Makefile.lng
	Target 'custom_tags.txt'
	Builiding the custom tags for the lang files
Makefile.gimp
	Target 'gfx'
	Building the png sprite files from xcf source files based on the GFX_LIST_FILES

gimp.sed, gimpscript
	Required for Makefile.gimp
check_language
	(old) language check script. Needs the language number as input
nml_langcheck
	(new) language check script



3 Obtaining the source
------------------------

The source code can be obtained from the #openttdcoop DevZone at
    http://dev.openttdcoop.org/projects/make-nml-common
or via mercurial checkout
    hg clone http://hg.openttdcoop.org/make-nml-common



---------
4 Credits
---------

Author: Ingo von Borstel (aka planetmaker)

nml_langcheck.py:   Alberth
check_language:     Terkhen

Special thanks to #openttdcoop and especially Ammler who provides and
works a lot on maintaining the Development Zone where this repository is
hosted and who also frequently gives much valuable input. Thanks also to
Yexo, Rubidium and Ammler who frequently give valuable input in form of
advice and patches to this project. Last but not least
thanks to all the NewGRF authors whose NewGRFs can be my playground for
this project.



---------------
5 License
---------------

My Fancy NewGRF
Copyright (C) 2011,2012 planetmaker and others

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this NewGRF; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
