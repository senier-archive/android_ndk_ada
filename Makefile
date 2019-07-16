GNAT_PREFIX=aarch64-linux-gnu-
NDK_DIR=/opt/android-ndk-r19c

DUMMY := $(shell mkdir -p obj)

all: obj/local/arm64-v8a/hello
	$(NDK_DIR)/ndk-build V=1

obj/local/arm64-v8a/hello: obj/program.a

obj/program.a: obj/program.o obj/b~program.o
	rm -f $@
	$(GNAT_PREFIX)ar cr $@ $^

obj/%.o obj/%.ali: src/%.adb src/%.ads
	$(GNAT_PREFIX)gcc-8 -c $< -o $@

obj/b~%.o: obj/b~%.adb obj/b~%.ads
	$(GNAT_PREFIX)gcc-8 -c $< -o $@

obj/b~%.adb obj/b~%.ads: obj/%.ali
	(cd $(dir $<) && $(GNAT_PREFIX)gnatbind -n $(notdir $<))

clean:
	rm -rf obj libs
