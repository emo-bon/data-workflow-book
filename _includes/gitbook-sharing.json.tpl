            "sharing": {
              {% if site.github_username %}
                "github": true,
                "github_link": "https://github.com/{{ site.github_username }}",
              {% else %}
                "github_link": "https://github.com",
                "github": false,
              {% endif %}
              {% if site.twitter_username %}
                "twitter": true,
                "twitter_link": "https://twitter.com/{{ site.twitter_username }}",
              {% else %}
                "twitter": false,
              {% endif %}
                "all": ["twitter","github"]
            },
