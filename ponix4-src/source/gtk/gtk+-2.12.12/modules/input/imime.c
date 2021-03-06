/*
 * gtkimmoduleime
 * Copyright (C) 2003 Takuro Ashie
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
 *
 * $Id: imime.c 13994 2005-09-28 16:03:11Z tml $
 */

#include <config.h>
#include <string.h>

#include "gtk/gtkintl.h"
#include "gtk/gtkimmodule.h"
#include "gtkimcontextime.h"

static const GtkIMContextInfo ime_info = {
  "ime",
  "Windows IME",
  "gtk+",
  "",
  "ja:ko:zh",
};

static const GtkIMContextInfo *info_list[] = {
  &ime_info,
};

void
im_module_init (GTypeModule * module)
{
  gtk_im_context_ime_register_type (module);
}

void
im_module_exit (void)
{
}

void
im_module_list (const GtkIMContextInfo *** contexts, int *n_contexts)
{
  *contexts = info_list;
  *n_contexts = G_N_ELEMENTS (info_list);
}

GtkIMContext *
im_module_create (const gchar * context_id)
{
  g_return_val_if_fail (context_id, NULL);

  if (!strcmp (context_id, "ime"))
    return g_object_new (GTK_TYPE_IM_CONTEXT_IME, NULL);
  else
    return NULL;
}
