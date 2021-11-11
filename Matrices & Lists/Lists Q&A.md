<style type="text/css">
  code{white-space: pre-wrap;}
  span.smallcaps{font-variant: small-caps;}
  span.underline{text-decoration: underline;}
  div.column{display: inline-block; vertical-align: top; width: 50%;}
  div.hanging-indent{margin-left: 1.5em; text-indent: -1.5em;}
  ul.task-list{list-style: none;}
    </style>

<style type="text/css">code{white-space: pre;}</style>
<script type="text/javascript">
if (window.hljs) {
  hljs.configure({languages: []});
  hljs.initHighlightingOnLoad();
  if (document.readyState && document.readyState === "complete") {
    window.setTimeout(function() { hljs.initHighlighting(); }, 0);
  }
}
</script>








<style type="text/css">
.main-container {
  max-width: 940px;
  margin-left: auto;
  margin-right: auto;
}
img {
  max-width:100%;
}
.tabbed-pane {
  padding-top: 12px;
}
.html-widget {
  margin-bottom: 20px;
}
button.code-folding-btn:focus {
  outline: none;
}
summary {
  display: list-item;
}
pre code {
  padding: 0;
}
</style>



<!-- tabsets -->

<style type="text/css">
.tabset-dropdown > .nav-tabs {
  display: inline-table;
  max-height: 500px;
  min-height: 44px;
  overflow-y: auto;
  border: 1px solid #ddd;
  border-radius: 4px;
}

.tabset-dropdown > .nav-tabs > li.active:before {
  content: "";
  font-family: 'Glyphicons Halflings';
  display: inline-block;
  padding: 10px;
  border-right: 1px solid #ddd;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open > li.active:before {
  content: "";
  border: none;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open:before {
  content: "";
  font-family: 'Glyphicons Halflings';
  display: inline-block;
  padding: 10px;
  border-right: 1px solid #ddd;
}

.tabset-dropdown > .nav-tabs > li.active {
  display: block;
}

.tabset-dropdown > .nav-tabs > li > a,
.tabset-dropdown > .nav-tabs > li > a:focus,
.tabset-dropdown > .nav-tabs > li > a:hover {
  border: none;
  display: inline-block;
  border-radius: 4px;
  background-color: transparent;
}

.tabset-dropdown > .nav-tabs.nav-tabs-open > li {
  display: block;
  float: none;
}

.tabset-dropdown > .nav-tabs > li {
  display: none;
}
</style>

<!-- code folding -->




</head>

<body>


<div class="container-fluid main-container">




<div id="header">



<h1 class="title toc-ignore">LP3_S21084371</h1>
<h4 class="author">Salah</h4>
<h4 class="date">11/10/2021</h4>

</div>


<div id="practice-q1.-write-an-r-program-to-count-number-of-objects-in-a-given-list" class="section level4">
<h4>Practice Q1. Write an R program to count number of objects in a given list?</h4>
<pre class="r"><code>list_data &lt;-  list( c(&quot; Red &quot;,&quot; Green &quot;,&quot; Black &quot;),list(&quot; Python &quot;, &quot; PHP &quot;, &quot; Java &quot;))
print(&quot; List:&quot;)</code></pre>
<pre><code>## [1] &quot; List:&quot;</code></pre>
<pre class="r"><code>print(list_data)</code></pre>
<pre><code>## [[1]]
## [1] &quot; Red &quot;   &quot; Green &quot; &quot; Black &quot;
## 
## [[2]]
## [[2]][[1]]
## [1] &quot; Python &quot;
## 
## [[2]][[2]]
## [1] &quot; PHP &quot;
## 
## [[2]][[3]]
## [1] &quot; Java &quot;</code></pre>
<pre class="r"><code>print(&quot;Number    of    objects    in    the    said    list:&quot;)</code></pre>
<pre><code>## [1] &quot;Number    of    objects    in    the    said    list:&quot;</code></pre>
<pre class="r"><code>lengths(list_data)[1] + lengths(list_data)[2]</code></pre>
<pre><code>## [1] 6</code></pre>
<pre class="r"><code>### Additional information can be extracted as bellow,
str(list_data) #Metadata about the list (General information)</code></pre>
<pre><code>## List of 2
##  $ : chr [1:3] &quot; Red &quot; &quot; Green &quot; &quot; Black &quot;
##  $ :List of 3
##   ..$ : chr &quot; Python &quot;
##   ..$ : chr &quot; PHP &quot;
##   ..$ : chr &quot; Java &quot;</code></pre>
<pre class="r"><code>length(list_data) # Count the number of elements in the list</code></pre>
<pre><code>## [1] 2</code></pre>
<pre class="r"><code>lengths(list_data) #Count the number of objects within the list elements</code></pre>
<pre><code>## [1] 3 3</code></pre>
</div>
<div id="practice-q2.-write-an-r-program-to-assign-null-to-a-given-list-element" class="section level4">
<h4>Practice Q2. Write an R program to assign NULL to a given list element?</h4>
<pre class="r"><code>l   =    list(1 ,   2 ,   3 ,   4 ,   5)
print(&quot; Original    list:&quot;)</code></pre>
<pre><code>## [1] &quot; Original    list:&quot;</code></pre>
<pre class="r"><code>print(l)</code></pre>
<pre><code>## [[1]]
## [1] 1
## 
## [[2]]
## [1] 2
## 
## [[3]]
## [1] 3
## 
## [[4]]
## [1] 4
## 
## [[5]]
## [1] 5</code></pre>
<pre class="r"><code>print(&quot; Set   2 nd    and   3 rd    elements    to    NULL &quot;)</code></pre>
<pre><code>## [1] &quot; Set   2 nd    and   3 rd    elements    to    NULL &quot;</code></pre>
<pre class="r"><code>l[c(2,3)] = list(NULL)
print(l)</code></pre>
<pre><code>## [[1]]
## [1] 1
## 
## [[2]]
## NULL
## 
## [[3]]
## NULL
## 
## [[4]]
## [1] 4
## 
## [[5]]
## [1] 5</code></pre>
</div>
<div id="practice-q3.-write-an-r-program-to-add-10-to-each-element-of-the-first-vector-in-a-given-list-sample-list-g1-110-g2-r-programming-g3-html." class="section level4">
<h4>Practice Q3. Write an R program to Add 10 to each element of the first vector in a given list? Sample list: (g1 = 1:10, g2 = ”R Programming”, g3 = ”HTML”).</h4>
<pre class="r"><code>list1    &lt;-   list( g1   =   1:10 ,    g2   =   &quot; R    Programming &quot;,   g3 = &quot; HTML &quot;)
print(&quot;Original    list:&quot;)</code></pre>
<pre><code>## [1] &quot;Original    list:&quot;</code></pre>
<pre class="r"><code>print( list1 )</code></pre>
<pre><code>## $g1
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $g2
## [1] &quot; R    Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;</code></pre>
<pre class="r"><code>print(&quot; New    list:&quot;)</code></pre>
<pre><code>## [1] &quot; New    list:&quot;</code></pre>
<pre class="r"><code>s = rep(10,times =10)
list1[[1]] &lt;- list1[[1]]+s
print(list1)</code></pre>
<pre><code>## $g1
##  [1] 11 12 13 14 15 16 17 18 19 20
## 
## $g2
## [1] &quot; R    Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;</code></pre>
</div>
<div id="practice-q4.-write-an-r-program-to-extract-all-elements-of-a-first-vector-except-the-third-element-of-it-from-a-given-list.-sample-list-g1-110-g2-r-programming-g3-html." class="section level4">
<h4>Practice Q4. Write an R program to extract all elements of a first vector except the third element of it from a given list. Sample list: (g1 = 1:10, g2 = ”R Programming”, g3 = ”HTML”).</h4>
<pre class="r"><code>list1 = list( g1  = 1:10 , g2  = &quot; R   Programming &quot;, g3 =   &quot; HTML &quot;)
print(&quot; Original    list:&quot;)</code></pre>
<pre><code>## [1] &quot; Original    list:&quot;</code></pre>
<pre class="r"><code>print( list1 )</code></pre>
<pre><code>## $g1
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $g2
## [1] &quot; R   Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;</code></pre>
<pre class="r"><code>print(&quot; First    vector:&quot;)</code></pre>
<pre><code>## [1] &quot; First    vector:&quot;</code></pre>
<pre class="r"><code>list1[[1]][-3]</code></pre>
<pre><code>## [1]  1  2  4  5  6  7  8  9 10</code></pre>
</div>
<div id="practice-q5.-write-an-r-program-to-add-a-new-item-g4-python-to-a-given-list.-sample-list-g1-110-g2-r-programming-g3-html." class="section level4">
<h4>Practice Q5. Write an R program to add a new item g4 = ”Python” to a given list. Sample list: (g1 = 1:10, g2 = ”R Programming”, g3 = ”HTML”).</h4>
<pre class="r"><code>list1 = list( g1  = 1:10 , g2  = &quot; R   Programming &quot;, g3 =   &quot; HTML &quot;)
print(&quot; Original    list:&quot;)</code></pre>
<pre><code>## [1] &quot; Original    list:&quot;</code></pre>
<pre class="r"><code>print( list1 )</code></pre>
<pre><code>## $g1
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $g2
## [1] &quot; R   Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;</code></pre>
<pre class="r"><code>print(&quot; Add   a   new    vector    to    the    said    list:&quot;)</code></pre>
<pre><code>## [1] &quot; Add   a   new    vector    to    the    said    list:&quot;</code></pre>
<pre class="r"><code>list1$g4 = &quot;Python&quot;
print(list1)</code></pre>
<pre><code>## $g1
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $g2
## [1] &quot; R   Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;
## 
## $g4
## [1] &quot;Python&quot;</code></pre>
</div>
<div id="practice-q6.-write-an-r-program-to-get-the-length-of-the-first-two-vectors-of-a-given-list.-sample-list-g1-110-g2-r-programming-g3-html." class="section level4">
<h4>Practice Q6. Write an R program to get the length of the first two vectors of a given list. Sample list: (g1 = 1:10, g2 = ”R Programming”, g3 = ”HTML”).</h4>
<pre class="r"><code>list1 = list( g1  = 1:10 , g2  = &quot; R   Programming &quot;, g3 =   &quot; HTML &quot;)
print(&quot; Original    list:&quot;)</code></pre>
<pre><code>## [1] &quot; Original    list:&quot;</code></pre>
<pre class="r"><code>print( list1 )</code></pre>
<pre><code>## $g1
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $g2
## [1] &quot; R   Programming &quot;
## 
## $g3
## [1] &quot; HTML &quot;</code></pre>
<pre class="r"><code>print(&quot; Length    of    the    vector    g1    and    g2    of    the    said list&quot;)</code></pre>
<pre><code>## [1] &quot; Length    of    the    vector    g1    and    g2    of    the    said list&quot;</code></pre>
<pre class="r"><code>cat(&quot;Length of g1 is&quot; , lengths(list1)[1] , &quot;and length of g2 is&quot; , lengths(list1)[2]) #Count the number of objects within the list elements</code></pre>
<pre><code>## Length of g1 is 10 and length of g2 is 1</code></pre>
</div>
<div id="practice-q7.-write-an-r-program-to-find-all-elements-of-a-given-list-that-are-not-in-another-given-list-hint-see-setdiff..." class="section level4">
<h4>Practice Q7. Write an R program to find all elements of a given list that are not in another given list? Hint, see setdiff(..).</h4>
<pre class="r"><code>l1 = list (&quot;x&quot;,&quot;y&quot;,&quot;z&quot;)
l2 = list (&quot;X&quot;,&quot;Y&quot;,&quot;Z&quot;,&quot;x&quot;,&quot;y&quot;,&quot;z&quot;)
print(&quot;Original lists:&quot;)</code></pre>
<pre><code>## [1] &quot;Original lists:&quot;</code></pre>
<pre class="r"><code>print(l1)</code></pre>
<pre><code>## [[1]]
## [1] &quot;x&quot;
## 
## [[2]]
## [1] &quot;y&quot;
## 
## [[3]]
## [1] &quot;z&quot;</code></pre>
<pre class="r"><code>print(l2)</code></pre>
<pre><code>## [[1]]
## [1] &quot;X&quot;
## 
## [[2]]
## [1] &quot;Y&quot;
## 
## [[3]]
## [1] &quot;Z&quot;
## 
## [[4]]
## [1] &quot;x&quot;
## 
## [[5]]
## [1] &quot;y&quot;
## 
## [[6]]
## [1] &quot;z&quot;</code></pre>
<pre class="r"><code>print(&quot;All elements of l2 that arenot in l1 :&quot;)</code></pre>
<pre><code>## [1] &quot;All elements of l2 that arenot in l1 :&quot;</code></pre>
<pre class="r"><code>setdiff(l2,l1)</code></pre>
<pre><code>## [[1]]
## [1] &quot;X&quot;
## 
## [[2]]
## [1] &quot;Y&quot;
## 
## [[3]]
## [1] &quot;Z&quot;</code></pre>
</div>




</div>

<script>

// add bootstrap table styles to pandoc tables
function bootstrapStylePandocTables() {
  $('tr.odd').parent('tbody').parent('table').addClass('table table-condensed');
}
$(document).ready(function () {
  bootstrapStylePandocTables();
});


</script>

<!-- tabsets -->

<script>
$(document).ready(function () {
  window.buildTabsets("TOC");
});

$(document).ready(function () {
  $('.tabset-dropdown > .nav-tabs > li').click(function () {
    $(this).parent().toggleClass('nav-tabs-open');
  });
});
</script>

<!-- code folding -->


<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>

</body>
</html>
