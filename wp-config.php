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
define( 'DB_NAME', 'kientruc' );

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
define( 'AUTH_KEY',         'ITWuf[3.{K&,B <LYQrV1sAp4qd?3H6n-]R[_zPp-{ $(,hdDolks^-AK#YUdpK;' );
define( 'SECURE_AUTH_KEY',  'VV$^EoK||}WSQy(`7Cafw{a^$`I]</E?9|n>((foZ9rvKT)gQuBos%e:y1>i4uD5' );
define( 'LOGGED_IN_KEY',    '#(]=suN,hjYJ)N]iFQ32~HdxWJI<yM~hiC[{&nXY5euO^JU8f*K1H%&L.yYzPT|]' );
define( 'NONCE_KEY',        '!rYS4+tT_2(K$7vXE3S~yP+#m.uAo;~C<:}x@<KuQLNJ]mFR[wHpR-t=*3<</sBh' );
define( 'AUTH_SALT',        'zSy5FOtb/@Yc|<NHps1wzser`cT[hz?7hRmG*%&,`N)##?<hW{;QZzjm5Zp@S:T?' );
define( 'SECURE_AUTH_SALT', 'Dr@j0unae.gpa0DJ-fUfY9RL&1|2g:7.:mVmt1Bp2B^.!gNJT5SU4d%H<&Lt*4Hp' );
define( 'LOGGED_IN_SALT',   'Ac]*/ZTgr#(D_[Si9M*@J)fhy=nxJ2/;WzS@`@9^qW$F<Rs00 5T$LHoD`>;Yp(y' );
define( 'NONCE_SALT',       '5[zo?&W}StC%NN+E}Gkv&U0,cosH3J.lcgVUa:k6z7+)LuBN?n}SOnlrO,fyZN_+' );

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
ini_set('display_errors','Off');
ini_set('error_reporting', E_ALL );
define('WP_DEBUG_DISPLAY', false);