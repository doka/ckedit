; $Id: 
; 
; make file for ckedit profile
; 
; use it to download the ckedit profile into a drupal
;
; tbd: howto use
;

; interfaces
; ----------
api = 2
core = 7.x

; External libraries from ckeditor.com
; ------------------------------------
; CKEditor library, goes into into /sites/all/libraries
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.1/ckeditor_3.6.1.tar.gz"

; Modules
; -------
; ---------------------------------------------------------
; IMCE - file uploader and browser
; http://drupal.org/project/imce
projects[imce][version] = 1.4

; ---------------------------------------------------------
; wysiwyg - abstaction layer for client side editors
; http://drupal.org/project/wysiwyg
projects[wysiwyg][version] = 2.0

; ---------------------------------------------------------
; IMCE Wysiwyg integration bridge
; http://drupal.org/project/imce_wysiwyg
projects[imce_wysiwyg][version] = 1.x-dev

; ---------------------------------------------------------
; Ctools
; http://drupal.org/project/ctools
projects[ctools][version] = 1.0-beta1

; ---------------------------------------------------------
; Strongarm
; http://drupal.org/project/strongarm
projects[strongarm][version] = 2.0-beta2

; ---------------------------------------------------------
; Features
; http://drupal.org/project/features
projects[features][version] = 1.0-beta2


; ---------------------------------------------------------
; CKedit features module
projects[ckedit][type] = module
projects[ckedit][download][type] = get
projects[ckedit][download][url] = "https://github.com/doka/ckedit/tree/master/modules"
;projects[ckedit][version] = 1.0-beta2



