
resume.pdf: resume.ps
	ps2pdf $^ $@

resume.ps: resume.txt
	a2ps $^ -o $@ -1RB --borders=no

clean:
	rm resume.ps resume.pdf
