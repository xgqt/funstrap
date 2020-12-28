# This file is part of funstrap.

# funstrap is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# funstrap is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with funstrap.  If not, see <https://www.gnu.org/licenses/>.


SCRIPT  = funstrap

PREFIX  = /usr
DESTDIR =
INSTDIR = $(DESTDIR)$(PREFIX)
INSTBIN = $(INSTDIR)/bin


.PHONY: all
all:
	@echo did nothing. try targets: install, or uninstall.


.PHONY: install
install:
	test -d $(INSTDIR) || mkdir -p $(INSTDIR)
	test -d $(INSTBIN) || mkdir -p $(INSTBIN)

	install -m 0755 src/$(SCRIPT) $(INSTBIN)


.PHONY: uninstall
uninstall:
	$(RM) $(INSTBIN)/$(SCRIPT)
