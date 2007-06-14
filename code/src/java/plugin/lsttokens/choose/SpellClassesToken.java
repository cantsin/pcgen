/*
 * Copyright 2007 (C) Thomas Parker <thpr@users.sourceforge.net>
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
 */
package plugin.lsttokens.choose;

import pcgen.cdom.base.CDOMObject;
import pcgen.cdom.choice.GrantedChooser;
import pcgen.cdom.choice.RemovingChooser;
import pcgen.cdom.enumeration.ObjectKey;
import pcgen.cdom.filter.NegatingFilter;
import pcgen.cdom.filter.ObjectKeyFilter;
import pcgen.cdom.helper.ChoiceSet;
import pcgen.core.PCClass;
import pcgen.core.PCStat;
import pcgen.core.PObject;
import pcgen.persistence.LoadContext;
import pcgen.persistence.PersistenceLayerException;
import pcgen.persistence.lst.ChooseLstToken;
import pcgen.util.Logging;

public class SpellClassesToken implements ChooseLstToken
{

	private static final Class<PCClass> PCCLASS_CLASS = PCClass.class;

	public boolean parse(PObject po, String prefix, String value)
	{
		if (value == null)
		{
			// No args - legal
			StringBuilder sb = new StringBuilder();
			if (prefix.length() > 0)
			{
				sb.append(prefix).append('|');
			}
			sb.append(getTokenName());
			po.setChoiceString(sb.toString());
			return true;
		}
		Logging.errorPrint("CHOOSE:" + getTokenName()
			+ " may not have arguments: " + value);
		return false;
	}

	public String getTokenName()
	{
		return "SPELLCLASSES";
	}

	public ChoiceSet<?> parse(LoadContext context, CDOMObject obj, String value)
		throws PersistenceLayerException
	{
		if (value == null)
		{
			// No args - legal
			GrantedChooser<PCClass> pcChooser =
					GrantedChooser.getPCChooser(PCCLASS_CLASS);
			RemovingChooser<PCClass> chooser =
					new RemovingChooser<PCClass>(pcChooser);
			ObjectKeyFilter<PCClass> filter =
					ObjectKeyFilter.getObjectFilter(PCCLASS_CLASS);
			// Note this means allow null, which is then negated
			filter.setObjectFilter(ObjectKey.SPELL_STAT, null);
			chooser.addRemovingChoiceFilter(NegatingFilter
				.getNegatingFilter(filter));
			return chooser;
		}
		Logging.errorPrint("CHOOSE:" + getTokenName()
			+ " may not have arguments: " + value);
		return null;
	}
}
