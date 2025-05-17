

link_afs:
	# https://tig.csail.mit.edu/web-services/personal-web-page/
	ln -s . ~/public_html


perm:
	fs setacl .  system:anyuser none www read
	fs setacl images  system:anyuser none www read
	fs setacl data    system:anyuser none www read


copy_cv:
	cp ../cv/2024/cv.pdf data/peiqi-cv.pdf


update_afs:
	ssh wpq@login.csail.mit.edu "cd /afs/csail.mit.edu/u/w/wpq/public_html && git pull"