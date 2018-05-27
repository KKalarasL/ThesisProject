<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'TestProject');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gRQE/P&c&# ^.nXDb%?ve{TJKxNPEKFJrBC+G6k;%=8Vc%9%T]W*<Gdm,(}3|_ei');
define('SECURE_AUTH_KEY',  'i20[SvnNS<hM,SHq/!fv+^XGYY(x7Pr=XP4Jvc-7|O:5yT]53J+By#@zu}s&XJM8');
define('LOGGED_IN_KEY',    '*rxjY-e5VMeljIH|h/67DTy O33L?ZW6:Ou2XAxUq2?a]8}6gt!<f-Y[eec_0**e');
define('NONCE_KEY',        'VG =5AV})d:GgE:c<AriK;`)ZOH<KRx5,]`_&yow1p]MFpOc3ulZ[y0>bw+<0HVr');
define('AUTH_SALT',        'Ve[HL>JITb88KN6AT)rs*}bt(#;}dR6vWT``ruuO7F;+AHrj;+QlsD7msmLXq*.X');
define('SECURE_AUTH_SALT', '[D}Ms&<#{3;2[GnbC]mO{:K4}>Ca{U+9Ca>sM#>C N vbhMSGPjHZ|LrGuoL(GRz');
define('LOGGED_IN_SALT',   'BRp&H.q5}}%DPY(.@]BCx(6~=;Y.mgz^![tvgIQ6s].)d)_gzMg:9!k[S@6kel5b');
define('NONCE_SALT',       'JNHC-M`|I}TXeA26.et@F#R!~#Q)BW}wfP].dDN$64r$XwJcRqeU[n-}g5NIXOh|');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
