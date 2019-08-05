# For cuju
make clean
./configure	--enable-cuju			\
		--enable-kvm			\
		--disable-pie			\
		--target-list=x86_64-softmmu	\
		--enable-debug			\
		--enable-vhost-net
make -j8

# For cuju kvm
cd kvm
make clean
./configure
make -j8
