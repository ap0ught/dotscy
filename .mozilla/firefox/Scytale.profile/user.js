/* My Firefox configuration.
 *
 * Great examples to be found at:
 * http://www.mozilla.org/unix/customizing.html#prefs
 */

// Search-as-you-type config, not sure about the meaning of each of those though.
user_pref("accessibility.typeaheadfind.autostart", false);
user_pref("accessibility.typeaheadfind.enablesound", false);
user_pref("accessibility.typeaheadfind.flashBar", 0);

// Disable automatic update checks.
user_pref("app.update.enabled", false);
user_pref("browser.search.update", false);
user_pref("extensions.update.enabled", false);
user_pref("extensions.update.notifyUser", false);

// Open in tabs instead of new windows, except for popup windows.
user_pref("browser.link.open_newwindow.restriction", 2);

// Empty start page.
user_pref("browser.startup.homepage", "");
user_pref("browser.startup.page", 0);

// No "you've been updated" message.
user_pref("browser.startup.homepage_override.mstone", "ignore");

// Always display tabs bar.
user_pref("browser.tabs.autoHide", false);

// Don't warn when closing multiple tabs.
user_pref("browser.tabs.warnOnClose", false);

// No "welcome to Vimperator" message.
user_pref("extensions.vimperator.firsttime", false);

// Uhm, it sets something to UTF-8, so it must be a good thing.
user_pref("intl.charsetmenu.browser.cache", "UTF-8");

// _I_ decide whether to accept cookies.
user_pref("network.cookie.lifetimePolicy", 1);
// We've migrated from Firefox 0.9... ;)
user_pref("network.cookie.prefsMigrated", true);

// Don't warn when entering an SSL site.
user_pref("security.warn_entering_secure", false);
