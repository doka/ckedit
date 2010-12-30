; This file describes the core project requirements for CKEdit 7.x.
;
; Use this file to build a full distro including Drupal core and
; the CKEdit install profile using the following command:
;
;     $ drush make distro.make [directory]

; compatibility
; -------------
api = 2
core = 7.x

; Drupal 
; ------
projects[drupal][version] = 7.0-rc4

; External libraries
; ------------------
; CKEditor library, goes into into /sites/all/libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5/ckeditor_3.5.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; Drupal modules
; --------------
; projects[imce][version] = 1.1
; projects[wysiwyg][version] = 2.x-dev
; projects[imce_wysiwyg][version] = 1.x-dev

; ckedit.make or drupal-org.make
; ---------------
projects[ckedit][type] = profile
projects[ckedit][download][type] = git
projects[ckedit][download][url] = "git://github.com/doka/ckedit.git"
projects[ckedit][download][branch] = "master"
