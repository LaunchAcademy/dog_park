Dog Park
========

Solution for Dog Park checkpoint.

After adding your models and related specs, run rspec with the
`documentation` formatter like so:

```bash
bundle exec rspec --format documentation
```

Your specs should cover the following at a minimum:

```plain

Owner
  should not be valid when last_name is: nil, ""
  should be valid when last_name is: "Bond"
  should not be valid when first_name is: nil, ""
  should be valid when email is: "james.bond@mi6.gov.uk"
  should not be valid when email is: nil, ""
  should be valid when first_name is: "James"
  should have many dogs through ownerships

Dog
  should have many owners through ownerships
  should not be valid when name is: nil, ""
  should be valid when name is: "Rover"

Finished in 0.03835 seconds
10 examples, 0 failures

Randomized with seed 42513

```

