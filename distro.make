; This file describes the core project requirements for CKEdit 7.x.
;
; Use this file to build a full distro including:
;   - the Drupal core
;   - the 3rd party files from ckeditor.com
;   - the CKEdit install profile (via drupal-org.make file)
; using the following command:
;     $ drush make distro.make [directory]

; compatibility
; -------------
api = 2
core = 7.x

; Drupal 7 core
; -------------
projects[drupal][version] = 7.2

; External libraries from ckeditor.com
; ------------------------------------
; CKEditor library, goes into into /sites/all/libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.1/ckeditor_3.6.1.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; ckedit profile via drupal-org.make
; ----------------------------------
projects[ckedit][type] = profile
projects[ckedit][download][type] = git
projects[ckedit][download][url] = "git://github.com/doka/ckedit.git"
projects[ckedit][download][branch] = "master"
