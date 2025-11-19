spec.postinstall = "Thank you for installing the 'my_first_gem'
gem. Libvips is required to use this gem, so please install
libvips via apt-get install libvips-dev or some other OSspecific means."

spec.post_install_message = File.read('POSTINSTALL.txt')
