BUILDDIR:= ./build
BOILERPLATE:=./wasm-boilerplate



$(BUILDDIR)/main.wasm: main.go  $(BUILDDIR)/  $(BUILDDIR)/.htaccess $(BUILDDIR)/wasm_exec.js $(BUILDDIR)/index.html	
	GOOS=js GOARCH=wasm go build -ldflags="-s -w" -o $@ .


$(BUILDDIR)/.htaccess: $(BOILERPLATE)/.htaccess
	cp $^ $@ 

$(BUILDDIR)/index.html: $(BOILERPLATE)/index.html
	cp $^ $@ 

$(BUILDDIR)/wasm_exec.js: $(BOILERPLATE)/wasm_exec.js
	cp $^ $@ 


.phony:  clean $(BUILDDIR)/

$(BUILDDIR)/:
	mkdir $(BUILDDIR)

clean:
	rm -rf ./build
