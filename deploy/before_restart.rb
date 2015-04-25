Chef::Log.info("Running deploy/before_restart.rb...")

rails_env = new_resource.environment["RAILS_ENV"]
Chef::Log.info("Precompiling assets for #{rails_env}...")

current_release = release_path

node[:deploy].each do |application, deploy|
  deploy deploy[:deploy_to] do
    before_restart do
      rails_env = deploy[:rails_env]
      current_release = release_path
      execute "rake assets:precompile" do
        user deploy[:user]
        cwd current_release
        command "bundle exec rake assets:precompile 2>&1"
        environment "RAILS_ENV" => rails_env
      end
    end
  end
end