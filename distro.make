; This file describes the core project requirements for CKEdit 7.x.
;
; Use this file to build a full distro including:
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - the CKEdit install profile (via drupal-org.make file)
; using the following command:
;     $ drush make https://raw.github.com/doka/ckedit/master/distro.make [directory]

; interfaces
; ----------
api = 2
core = 7.x

; Drupal core =================================================================
projects[drupal][type] = core
projects[drupal][version] = "7.2"

; External libraries ==========================================================
; from ckeditor.com, goes into into /sites/all/libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.1/ckeditor_3.6.1.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; Includes ====================================================================
; includes[] = https://github.com/Wiredcraft/buildkit/raw/7.x-2.x/tools.make

; Profile =====================================================================
projects[ckedit][type] = profile
projects[ckedit][download][type] = git
projects[ckedit][download][url] = "git://github.com/doka/ckedit.git"
; projects[ckedit][download][tag] = 7.x-1.0-dev
