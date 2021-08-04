$min = 0;
$max = 0;
@a = split(/\s+/, <STDIN>);
$n = scalar(@a);
for ($i = 0; $i < $n; $i++) {
    $cur = @a[$i];
    if ($min > $cur) { $min = $cur; }
    if ($max < $cur) { $max = $cur; }
}
print "$max $min";