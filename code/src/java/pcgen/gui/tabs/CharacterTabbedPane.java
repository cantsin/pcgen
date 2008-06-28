/*
 * CharacterTabbedPane.java
 * Copyright 2008 Connor Petty <cpmeister@users.sourceforge.net>
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
 * Created on Jun 27, 2008, 5:44:21 PM
 */
package pcgen.gui.tabs;

import javax.swing.JTabbedPane;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import pcgen.gui.UIContext;
import pcgen.gui.facade.CharacterFacade;

/**
 *
 * @author Connor Petty <cpmeister@users.sourceforge.net>
 */
public class CharacterTabbedPane extends JTabbedPane implements CharacterInfoTab
{

    private CharacterFacade character;

    public CharacterTabbedPane(UIContext context)
    {
        //initTabs
        getModel().addChangeListener(
                new ChangeListener()
                {

                    public void stateChanged(ChangeEvent e)
                    {
                        refreshCurrentTab();
                    }

                });

    }

    private void refreshCurrentTab()
    {
        ((CharacterInfoTab) getSelectedComponent()).setCharacter(character);
    }

    public void setCharacter(CharacterFacade character)
    {
        this.character = character;
        refreshCurrentTab();
    }

}
