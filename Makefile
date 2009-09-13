
resume.pdf: resume.ps
	ps2pdf $^ $@

resume.ps: resume.txt
	enscript -f Courier12 -p $@ -B $^

clean:
	rm resume.ps resume.pdf
