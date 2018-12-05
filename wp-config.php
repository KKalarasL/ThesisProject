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
define('DB_NAME', 'mahi');

/** MySQL database username */
define('DB_USER', 'kkalarasl');

/** MySQL database password */
define('DB_PASSWORD', 'KKLStyl3871995');

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
define('AUTH_KEY',         '_lqeKW/^1@`kr]uCOn!?ys$aS6u8vkSnDPHMFjS`z9[Anc&LWDbitt.mie8=LK$^');
define('SECURE_AUTH_KEY',  'Rv(9c9-X)yjQ_9CgYJYnuBtav#.y078Pd^3,LBG^f7*Z~x=/$1awMl<4J!rtVX>9');
define('LOGGED_IN_KEY',    'JBEOJ8!F[&Byhu`[G=<x%q$+wJwf?>9t!kr[,Gc+S002;>3DmCcm[gCFiVFUH-LG');
define('NONCE_KEY',        'ATphVk3<Zn%6&hnc`[Qqb+/j41su6,mGKRhr2yb]v~~{S3DEBInkfN<8(#> p]]y');
define('AUTH_SALT',        'e.-2H`]k#3>fG71H:%6l`d9.|3?^ ouAy$-d%zo{-ttd^i+i~1PGZ-cQS^*y`2~S');
define('SECURE_AUTH_SALT', 'uqyJ*4lH9<ss-p.eK/G`CII~yc.STds(gJ#WzdslfmicY433E[cL#~q9[vli)?Rq');
define('LOGGED_IN_SALT',   'U8>u0)FOiI~s)uYqr8[s{nV!.EMDloa[G<K/&I)Y9G&oy#{fzCyUQm6?4ow8Sn?q');
define('NONCE_SALT',       'd%:(Y?tCGn^kIhWu/ZXpn7pbl&NlpJk3ta.o%vRX_kuwz0/l7f, &Lqo3iE37Trn');

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

/* Differende FTP Method */
define('FS_METHOD', 'direct');
