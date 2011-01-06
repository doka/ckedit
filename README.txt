$Id: 

CKEdit profile 1.x for Drupal 7
---------------------------------
Install Drupal with WYSIWYG features pre-configured.

CKEdit is a Drupal distribution with preconfigured WYSIWYG features,
extending the standard Drupal profile with ckeditor, wysiwyg and IMCE modules


CKEdit helps drupal users
-------------------------
- to start with a ready-to-use WYSIWYG editor
- allows to format posts just out-of-the-box
- no hassle with html code itself


Requirements
------------
In addition to the standard Drupal requirements you will need the following 
to be installed to make use of CKEdit:

- drush 3.1 - http://drupal.org/project/drush
- drush make 2.0 beta 9 - http://drupal.org/project/drush_make
- git - http://git-scm.com


Getting started
---------------
There are two options to use CKEdit:

1. Install a full Drupal distribution: you can have a complet Drupal installation
   with ckedit install profile, and all necessary modules and 3rd party libraries
   installed and configured. CKEdit provides a `distro.make` file for building this
   distribution by drush:
   
      $ drush make https://github.com/doka/ckedit/raw/master/distro.make [directory]

	  
2. Install the "CKEdit" install profile into the profiles/ directory of a Drupal install.
   In that case you also have to manually install the 3rd party libraries of ckeditor, 
   then build the CKEdit profile by profile.make file:
   
      $ cd [Drupal root]/sites/all
      $ mkdir libraries
      $ cd libraries
      $ wget http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5/ckeditor_3.5.tar.gz
      $ tar xfv ckeditor_3.5.tar.gz
      $ cd [Drupal root]
      $ drush make --no-core https://github.com/doka/ckedit/raw/master/profile.make .
	  
After you can install new Drupal sites as usual, and choose the CKEdit profile for these
features.


Functionality
-------------
CKEdit distro extends the standard profile of Drupal 7:

1. the distro.make installs the drupal core files, and downloads the CKEditor
   library (/sites/all/libraries/ckeditor), then installs the CKEdit profiles via drupal-org.make

2. the profile.make installs the CKEdit profiles via drupal-org.make

3. the drupal-org.make downloads wysiwyg, icme and icme_wysiwyg modules
   (/profiles/ckedit/modules/) as well as the features, strongarm and ctools modules

4. the ckedit.install covers topics where feature is not yet working.
   - it is an extension of standard.profile of Drupal.
   - adds a new text format (/admin/config/content/formats) called CKEditor
   - creates a new role and permissions for wysiwyg features (/admin/people/permissions)
   - configures the CKEditor buttons and other feature (/config/content/wysiwyg)
     (in wysiwyg table in the database)
   - clean up some default variables, see: http://drupal.org/node/840080#comment-3145536
   - see standard-ckedit-profile.path file for differences to standard.install file of Drupal 7

5. via features (where feature can be used, resulting in ckedit-features.module)
   - configures the IMCE file browser (/admin/config/media/imce):
   - add an IMCE configuration profile (ckedit)
   - assign this profile to ckedit role


Maintainers
-----------
- doka@wepoca.net

Credits
-------
Build Kit installation profile


[1]: http://drupalcode.org/viewvc/drupal/contributions/modules/drush_make/README.txt?view=co&pathrev=DRUPAL-6--2
