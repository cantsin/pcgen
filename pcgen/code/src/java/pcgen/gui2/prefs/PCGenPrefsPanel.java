/*
 * PreferencesPanel.java
 * Copyright 2008 (C) James Dempsey
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * Created on 20/07/2008 12:29:10
 *
 * $Id: $
 */
package pcgen.gui2.prefs;

import javax.swing.JPanel;

/**
 * The abstract class <code>PCGenPrefsPanel</code> defines the 
 * interface for a panel in the Preferences dialog.
 * 
 * Last Editor: $Author: $
 * Last Edited: $Date:  $
 * 
 * @author James Dempsey <jdempsey@users.sourceforge.net>
 * @version $Revision:  $
 */
@SuppressWarnings("serial")
public abstract class PCGenPrefsPanel extends JPanel
{

	static final String BLANK_TEXT = "    "; //$NON-NLS-1$

	/**
	 * Returns the title of the panel.
	 */
	public abstract String getTitle();

	/**
	 * Initialises the panel's values based on the current preferences.
	 */
	public abstract void applyOptionValuesToControls();
	
	/**
	 * Updates the current preferences based on the panel's values.
	 */
	public abstract void setOptionsBasedOnControls();

	public void resetOptionValues()
	{
	}
	
	/**
	 * Identify of the actions the user has taken require a restart to take effect.
	 * @return true if a restart is needed for the user's changes to take effect.
	 */
	public boolean needsRestart()
	{
		return false;
	}

}
