/*
 * RaceLstToken
 * Copyright 2005 (C) Devon Jones <soulcatcher@evilsoft.org>
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
 * Created on September 2, 2002, 8:16 AM
 *
 * Current Ver: $Revision$
 * Last Editor: $Author$
 * Last Edited: $Date$
 *
 */
package pcgen.persistence.lst;

import pcgen.core.Race;
import pcgen.persistence.LoadContext;
import pcgen.persistence.PersistenceLayerException;

/**
 * <code>RaceLstToken</code>
 *
 * @author  Devon Jones <soulcatcher@evilsoft.org>
 */
public interface RaceLstToken extends CDOMToken<Race>
{
	/**
	 * Parses an Race object
	 * @param race
	 * @param value
	 * @return true if parse OK
	 */
	public boolean parse(Race race, String value);

	public boolean parse(LoadContext context, Race race, String value)
			throws PersistenceLayerException;

	public String unparse(LoadContext context, Race race);
}
