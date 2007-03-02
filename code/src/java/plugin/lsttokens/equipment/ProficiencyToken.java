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
package plugin.lsttokens.equipment;

import pcgen.cdom.base.CDOMSimpleSingleRef;
import pcgen.cdom.enumeration.ObjectKey;
import pcgen.core.Equipment;
import pcgen.core.WeaponProf;
import pcgen.persistence.LoadContext;
import pcgen.persistence.lst.EquipmentLstToken;

/**
 * Deals with PROFICIENCY token
 */
public class ProficiencyToken implements EquipmentLstToken
{

	public String getTokenName()
	{
		return "PROFICIENCY";
	}

	public boolean parse(Equipment eq, String value)
	{
		eq.setProfName(value);
		return true;
	}

	public boolean parse(LoadContext context, Equipment eq, String value)
	{
		CDOMSimpleSingleRef<WeaponProf> wp =
				context.ref.getCDOMReference(WeaponProf.class, value);
		/*
		 * TODO FIXME This really needs to be considered theoretical
		 * information, not the type of link that is being done here (of storing
		 * the WeaponProf). The reason is that WeaponProf may be a mutable
		 * object, and therefore must not be the target of ObjectKey...
		 * 
		 * **WARNING** Any changes here need to be chained into NATURALATTACKS
		 * as well
		 */
		eq.put(ObjectKey.WEAPON_PROF, wp);
		return true;
	}

	public String unparse(LoadContext context, Equipment eq)
	{
		CDOMSimpleSingleRef<WeaponProf> wp = eq.get(ObjectKey.WEAPON_PROF);
		if (wp == null)
		{
			return null;
		}
		return new StringBuilder().append(getTokenName()).append(':').append(
			wp.getLSTformat()).toString();
	}
}
