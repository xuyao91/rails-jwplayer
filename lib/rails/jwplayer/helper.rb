module Rails::Jwplayer
  module Helper
    DEFAULT_OPTIONS = {
      id: "jwplayer",
      flashplayer: "/assets/jwplayer/jwplayer.flash.swf"
    }

    def jwplayer_config_include
      return raise "missing license key"  if Rails::Jwplayer.key.nil?
      
      jwplayer_config_js = <<-JWPLAYER_CONFIG_JS
jwplayer.key = "#{Rails::Jwplayer.key}";
JWPLAYER_CONFIG_JS
      javascript_tag  jwplayer_config_js, type: 'application/javascript'   
    end 

    def jwplayer_tag(options = {})
      options = DEFAULT_OPTIONS.merge(options)

      respond = %Q{<div id='#{options[:id]}'>This div will be replaced by the JW Player.</div>
                  <script type='text/javascript'>
                    var jwplayer = jwplayer('#{options.delete(:id)}').setup(#{options.to_json});
                  </script>}

      respond.respond_to?(:html_safe) ? respond.html_safe : respond
    end  

  end  
end