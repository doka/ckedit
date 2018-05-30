; $Id:
;
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
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.9.2/ckeditor_4.9.2_standard.tar.gz"
