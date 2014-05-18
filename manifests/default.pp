node default {
  include epel
  class { 'carbon':
    storage_schemas => [
      {
        name       => 'carbon',
        pattern    => '^carbon\.',
        retentions => '1m:90d'
      },
      {
        name       => 'default',
        pattern    => '.*',
        retentions => '10s:30d,1m:120d,5m:2y'
      }
    ],
  }
  include graphiteapi
}
