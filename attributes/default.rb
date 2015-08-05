default['collectd']['url'] = "https://s3.amazonaws.com/collectd-#{node['collectd']['version']}/collectd-#{node['collectd']['version']}.tar.gz"
default['collectd']['plugins'] = {
  'syslog' => {
    'config' => { 'LogLevel' => 'Info' }
  },
  'disk'      => { },
  'swap'      => { },
  'memory'    => { },
  'cpu'       => { },
  'interface' => {
    'config' => { 'Interface' => 'lo', 'IgnoreSelected' => true }
  },
  'df'        => {
    'config' => {
      'ReportReserved' => false,
      'FSType' => [ 'proc', 'sysfs', 'fusectl', 'debugfs', 'devtmpfs', 'devpts', 'tmpfs' ],
      'IgnoreSelected' => true
    }
  },
  'write_graphite' => {
    'config' => {
      'Prefix' => 'servers.'
    }
  }
}
