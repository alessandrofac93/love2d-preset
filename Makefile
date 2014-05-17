default: build run

clean:
	@if [ -e build ]; then rm -r build; fi

build: clean
	@lib/helper.sh dotlove

run: build
	@lib/helper.sh run

# packaging

package-windows-x86: build
	@lib/helper.sh windows_x86

package-windows-x64: build
	@lib/helper.sh windows_x64

package-linux-x86: build
	@lib/helper.sh linux_x86

package-linux-x64: build
	@lib/helper.sh linux_x64

package-windows: package-windows-x86 package-windows-x64
package-linux: package-linux-x86 package-linux-x64
package-all: package-linux package-windows
