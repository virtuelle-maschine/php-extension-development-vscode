/* ext_skeleton_name extension for PHP */

#ifndef PHP_EXT_SKELETON_NAME_H
# define PHP_EXT_SKELETON_NAME_H

extern zend_module_entry ext_skeleton_name_module_entry;
# define phpext_ext_skeleton_name_ptr &ext_skeleton_name_module_entry

# define PHP_EXT_SKELETON_NAME_VERSION "0.0.1-dev"
# define PHP_EXT_SKELETON_NAME_NAME "ext_skeleton_name"

# if defined(ZTS) && defined(COMPILE_DL_EXT_SKELETON_NAME)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_EXT_SKELETON_NAME_H */
