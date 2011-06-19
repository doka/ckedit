; $Id: 
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
projects[imce][version] = 1.4

; ---------------------------------------------------------
; wysiwyg - abstaction layer for client side editors
; http://drupal.org/project/wysiwyg
projects[wysiwyg][version] = 2.0
;[PATCH] Issue #1143104 by EugenMayer: Fixed CKEditor 3.5.4 version detection.
projects[wysiwyg][patch][] = "http://drupalcode.org/project/wysiwyg.git/patch/26b4887"

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

