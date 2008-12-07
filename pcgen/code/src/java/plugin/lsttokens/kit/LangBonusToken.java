/*
 * LangBonusToken.java
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
 * Created on 2/10/2008 15:57:15
 *
 * $Id: $
 */
package plugin.lsttokens.kit;

import java.util.List;
import java.util.StringTokenizer;

import pcgen.cdom.base.Constants;
import pcgen.cdom.reference.CDOMSingleRef;
import pcgen.cdom.reference.ReferenceUtilities;
import pcgen.core.Language;
import pcgen.core.kit.KitLangBonus;
import pcgen.rules.context.LoadContext;
import pcgen.rules.persistence.token.AbstractToken;
import pcgen.rules.persistence.token.CDOMSecondaryToken;

/**
 * The Class <code>LangBonusToken</code> handles the LANGBONUS kit tag.
 * 
 * Last Editor: $Author: $
 * Last Edited: $Date:  $
 * 
 * @author James Dempsey <jdempsey@users.sourceforge.net>
 * @version $Revision:  $
 */
public class LangBonusToken extends AbstractToken implements
		CDOMSecondaryToken<KitLangBonus>
{

	private static final Class<Language> LANGUAGE_CLASS = Language.class;

	/**
	 * Gets the name of the tag this class will parse.
	 * 
	 * @return Name of the tag this class handles
	 */
	@Override
	public String getTokenName()
	{
		return "LANGBONUS";
	}

	public Class<KitLangBonus> getTokenClass()
	{
		return KitLangBonus.class;
	}

	public String getParentToken()
	{
		return "*KITTOKEN";
	}

	public boolean parse(LoadContext context, KitLangBonus kitLangBonus,
		String value)
	{
		if (isEmpty(value) || hasIllegalSeparator('|', value))
		{
			return false;
		}

		StringTokenizer tok = new StringTokenizer(value, Constants.PIPE);

		while (tok.hasMoreTokens())
		{
			kitLangBonus.addLanguage(context.ref.getCDOMReference(
				LANGUAGE_CLASS, tok.nextToken()));
		}
		return true;
	}

	public String[] unparse(LoadContext context, KitLangBonus kitLangBonus)
	{
		List<CDOMSingleRef<Language>> languages = kitLangBonus.getLanguages();
		if (languages == null)
		{
			return null;
		}
		return new String[]{ReferenceUtilities.joinLstFormat(languages,
			Constants.PIPE)};
	}
}
