package Data::Perl::Collection::Array;

sub new { my $cl = shift; bless({ @_ }, $cl) }

sub get { $_[0][$_[1]] }

sub set { $_[0][$_[1]] = $_[2] }

sub first { }

sub first_index { }

sub grep { }

sub insert { }

sub join { }

sub map { }

sub natatime { }

sub reduce { }

sub shallow_clone { }

sub shuffle { }

sub splice { }

sub uniq { }

sub delete { delete @{$_[0]}{$_[1]} }

sub push { push shift, @_ }

sub pop { pop $_[0] }

sub shift { shift $_[0] }

sub unshift { unshift shift, @_ }

sub sort { $_[1] ? sort { $_[1]->($a, $b) } @{$_[0]} : sort @{$_[0]} }

sub sort_in_place { $_[0] = $_[1] ? sort { $_[1]->($a, $b) } @{$_[0]} : sort @{$_[0]}; return }

sub elements { @{$_[0]} }

sub clear { $_[0] = [] }

sub is_empty { scalar @{$_[0]} ? 0 : 1 }

sub count { scalar @{$_[0]} }

sub accessor {
  if (@_ == 1) {
    $_[0]->{$_[1]};
  }
  elsif (@_ > 1) {
    $_[0]->{$_[1]} = $_[2];
  }
}

1;
