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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ieltprqy_gfmc' );

/** MySQL database username */
define( 'DB_USER', 'ieltprqy_gfmc_intelligent' );

/** MySQL database password */
define( 'DB_PASSWORD', 'gfmc_intelligent' );

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
define( 'AUTH_KEY',         '}!oVm7In%3} }W01(arIHY6m6MThz.x)1kS9#hH7R^wVT5:+FHaqI&j_Igi#~pm;' );
define( 'SECURE_AUTH_KEY',  'HkY0F1dn~%Y?hJMdGHE+2bO&)4c{_v!TS6kVy@ K[ HL%$]NpsMt Uv=0|QkJ8Bp' );
define( 'LOGGED_IN_KEY',    '_/-VPOa@!+%a&aJySf}rRv*U|:KhaX<F<f+%XeQ0Am^8b}M8uEGo)LN_|FR.!>u}' );
define( 'NONCE_KEY',        '(?j&sRA@#QU|0?;{XabmH$}@UB.mSFUfFykJbD|;O0)Th|JA)YfoSv}{Ag1GJ1^I' );
define( 'AUTH_SALT',        'dgL|zd1^Qv@DQd*i8W#E5c=#WJ.D>:EMm9.1pD!{Ml$EKx( ,fYomPy<TXaqXvR}' );
define( 'SECURE_AUTH_SALT', 'L+d(lbwE_Fd^V5:&I$[V~%2/f3]8,G-,)+I_,E:O?*!un/x 7#WZG5=l1rT%f>=a' );
define( 'LOGGED_IN_SALT',   'n%6 z%J1e!:+[MBp%)wV=^*1 Do+&$W&c-$nNz)saxgi/ T[fg{}B<2ppo)d`vi]' );
define( 'NONCE_SALT',       '+mrfQJ7,#2Z$(xiM#c-^)X?+w[Gm[nnh?5:H`LvEy?uw)MUh{h$j#h~Z5_G5Z}JW' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
