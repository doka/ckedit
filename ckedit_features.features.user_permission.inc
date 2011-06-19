<?php
/**
 * @file
 * ckedit_features.features.user_permission.inc
 */

/**
 * Implementation of hook_user_default_permissions().
 */
function ckedit_features_user_default_permissions() {
  $permissions = array();

  // Exported permission: use text format wysiwyg
  $permissions['use text format wysiwyg'] = array(
    'name' => 'use text format wysiwyg',
    'roles' => array(
      0 => 'authenticated user',
    ),
    'module' => 'filter',
  );

  return $permissions;
}
