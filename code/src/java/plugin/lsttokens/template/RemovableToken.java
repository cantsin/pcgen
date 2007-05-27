/*
 * Copyright 2006-2007 (C) Tom Parker <thpr@users.sourceforge.net>
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
 * Current Ver: $Revision$
 * Last Editor: $Author$
 * Last Edited: $Date$
 */
package plugin.lsttokens.template;

import pcgen.cdom.enumeration.ObjectKey;
import pcgen.core.PCTemplate;
import pcgen.persistence.LoadContext;
import pcgen.persistence.lst.PCTemplateLstToken;
import pcgen.util.Logging;

/**
 * Class deals with REMOVABLE Token
 */
public class RemovableToken implements PCTemplateLstToken
{

	public String getTokenName()
	{
		return "REMOVABLE";
	}

	public boolean parse(PCTemplate template, String value)
	{
		boolean set;
		char firstChar = value.charAt(0);
		if (firstChar == 'y' || firstChar == 'Y')
		{
			// 514 abbreviation cleanup
//			if (value.length() > 1 && !value.equalsIgnoreCase("YES"))
//			{
//				Logging.errorPrint("You should use 'YES' or 'NO' as the " + getTokenName());
//				Logging.errorPrint("Abbreviations will fail after PCGen 5.12");
//			}
			set = true;
		}
		else
		{
			// 514 abbreviation cleanup
//			if (firstChar != 'N' && firstChar != 'n'
//				&& !value.equalsIgnoreCase("NO"))
//			{
//				Logging.errorPrint("You should use 'YES' or 'NO' as the "
//						+ getTokenName());
//				Logging.errorPrint("Abbreviations will fail after PCGen 5.12");
//			}
			set = false;
		}
		template.setRemovable(set);
		return true;
	}

	public boolean parse(LoadContext context, PCTemplate template, String value)
	{
		Boolean remove;
		if (value.equalsIgnoreCase("NO"))
		{
			remove = Boolean.FALSE;
		}
		else if (value.equalsIgnoreCase("YES"))
		{
			remove = Boolean.TRUE;
		}
		else
		{
			Logging.errorPrint("Did not understand " + getTokenName()
				+ " value: " + value);
			Logging.errorPrint("Must be YES or NO");
			return false;
		}
		context.obj.put(template, ObjectKey.REMOVABLE, remove);
		return true;
	}

	public String[] unparse(LoadContext context, PCTemplate pct)
	{
		Boolean b = context.obj.getObject(pct, ObjectKey.REMOVABLE);
		if (b == null)
		{
			return null;
		}
		return new String[]{b.booleanValue() ? "YES" : "NO"};
	}
}
