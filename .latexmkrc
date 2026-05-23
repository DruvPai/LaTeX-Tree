$latex = 'latex -synctex=1 -interaction=nonstopmode -shell-escape';
$bibtex_use = 2;
$clean_ext = "nav snm";
$pdflatex = "xelatex --shell-escape";
@generated_exts = (@generated_exts, 'synctex.gz');
$pdf_mode = 1;        # tex -> pdf
$pdf_previewer = 'open -a Preview';


