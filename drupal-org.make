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


; Modules
; -------

; ---------------------------------------------------------
; IMCE - file uploader and browser
; http://drupal.org/project/imce
projects[imce][version] = 1.1

; ---------------------------------------------------------
; wysiwyg - abstaction layer for client side editors
; http://drupal.org/project/wysiwyg
; using a git mirror as long as no recommened modul available
; when a recommended release available, one line would be enough:
; projects[wysiwyg][version] = 1.0-alpha1
projects[wysiwyg][download][type] = "git"
projects[wysiwyg][download][url] = "git://github.com/doka/wysiwyg.git"
projects[wysiwyg][download][branch] = "master"

; ---------------------------------------------------------
; IMCE Wysiwyg integration bridge
; http://drupal.org/project/imce_wysiwyg
; projects[imce_wysiwyg][version] = 1.x-dev
projects[imce_wysiwyg][download][type] = "git"
projects[imce_wysiwyg][download][url] = "git://github.com/doka/imce_wysiwyg.git"
projects[imce_wysiwyg][download][branch] = "master"

; ---------------------------------------------------------
; Ctools
; http://drupal.org/project/ctools
projects[ctools][version] = 1.0-alpha1

; ---------------------------------------------------------
; Strongarm
; http://drupal.org/project/strongarm
projects[strongarm][version] = 2.0-beta2

; ---------------------------------------------------------
; Features
; http://drupal.org/project/features
projects[features][version] = 1.0-alpha3

