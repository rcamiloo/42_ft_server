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
define( 'DB_NAME', 'wp_base' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'QODKV`yr1w7CR/}MR9p1,=yddV=yaut$+3rpKV29TdvtXKVqu-#&j_LxQzft &Bh');
define('SECURE_AUTH_KEY',  'Rq%=i&>sO?I43,HzWhlF.z<~&LxDt+%8F)#MR<-]nYT_zL[R+8xvx|s;7pTc4{;R');
define('LOGGED_IN_KEY',    'V}UE-+1N[<+L6wgttR^.M4A59FGn:iXq#>|De%XtGENLa}z&xoS>_=CN8`MOxEjx');
define('NONCE_KEY',        'o4*(M:f(lQ5^.M@jS3UV<3sR_ghjLS2 P|`HBl(`ig[_.SNF^LsAu11?+7#6TV{I');
define('AUTH_SALT',        '].7ULv|V4@IyeLJ$(I3 +~pGCaE7b+.k;lzw9i7r+M|eU{C-Ur,H$~xS3XXr-l&d');
define('SECURE_AUTH_SALT', '+uUq(/m(=B?As+|=Nn6_|x?$uQ{NKdP|M292{{TM%@nRX@NT+^Ba*w:@^TCT{sI.');
define('LOGGED_IN_SALT',   '0;AC)y$>we-|XSR)%oeK&Lq!iCo(7%Mema=~UAqG`U~p0iBOM6!1E_Ju+(C|_+=3');
define('NONCE_SALT',       '3r!zy$b@~jl><.wG*rHLWw?:=D!xU*|uEGk#qYWfI;zJpmrm25k|,I1ZiF0b=~r|');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
