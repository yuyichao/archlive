/* GDK - The GIMP Drawing Kit
 * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

/*
 * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
 * file for a list of people on the GTK+ Team.  See the ChangeLog
 * files for a list of changes.  These files are distributed with
 * GTK+ at ftp://ftp.gtk.org/pub/gtk/. 
 */

#if !defined (__GDKX_H_INSIDE__) && !defined (GDK_COMPILATION)
#error "Only <gdk/gdkx.h> can be included directly."
#endif

#ifndef __GDK_X11_WINDOW_H__
#define __GDK_X11_WINDOW_H__

#include <gdk/gdk.h>

#include <X11/Xlib.h>
#include <X11/Xutil.h>

G_BEGIN_DECLS

#define GDK_TYPE_X11_WINDOW              (gdk_x11_window_get_type ())
#define GDK_X11_WINDOW(object)           (G_TYPE_CHECK_INSTANCE_CAST ((object), GDK_TYPE_X11_WINDOW, GdkX11Window))
#define GDK_X11_WINDOW_CLASS(klass)      (G_TYPE_CHECK_CLASS_CAST ((klass), GDK_TYPE_X11_WINDOW, GdkX11WindowClass))
#define GDK_IS_X11_WINDOW(object)        (G_TYPE_CHECK_INSTANCE_TYPE ((object), GDK_TYPE_X11_WINDOW))
#define GDK_IS_X11_WINDOW_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE ((klass), GDK_TYPE_X11_WINDOW))
#define GDK_X11_WINDOW_GET_CLASS(obj)    (G_TYPE_INSTANCE_GET_CLASS ((obj), GDK_TYPE_X11_WINDOW, GdkX11WindowClass))

#ifdef GDK_COMPILATION
typedef struct _GdkX11Window GdkX11Window;
#else
typedef GdkWindow GdkX11Window;
#endif
typedef struct _GdkX11WindowClass GdkX11WindowClass;

GType    gdk_x11_window_get_type          (void);

Window   gdk_x11_window_get_xid           (GdkWindow   *window);
void     gdk_x11_window_set_user_time     (GdkWindow   *window,
                                           guint32      timestamp);
void     gdk_x11_window_set_theme_variant_gtk_only (GdkWindow *window,
                                                    char      *variant);
void     gdk_x11_window_move_to_current_desktop (GdkWindow   *window);

/**
 * GDK_WINDOW_XDISPLAY:
 * @win: a #GdkWindow.
 *
 * Returns the display of a #GdkWindow.
 *
 * Returns: an Xlib <type>Display*</type>.
 */
#define GDK_WINDOW_XDISPLAY(win)      (GDK_DISPLAY_XDISPLAY (gdk_window_get_display (win)))

/**
 * GDK_WINDOW_XID:
 * @win: a #GdkWindow.
 *
 * Returns the X window belonging to a #GdkWindow.
 *
 * Returns: the Xlib <type>Window</type> of @win.
 */
#define GDK_WINDOW_XID(win)           (gdk_x11_window_get_xid (win))

guint32       gdk_x11_get_server_time  (GdkWindow       *window);

GdkWindow  *gdk_x11_window_foreign_new_for_display (GdkDisplay *display,
                                                    Window      window);
GdkWindow  *gdk_x11_window_lookup_for_display      (GdkDisplay *display,
                                                    Window      window);

G_END_DECLS

#endif /* __GDK_X11_WINDOW_H__ */
