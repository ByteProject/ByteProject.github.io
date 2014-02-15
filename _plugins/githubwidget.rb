module Jekyll
  class GithubRepo < Liquid::Tag

    def initialize(name, repository, tokens)
      super
      @repository = repository.strip

    end

    def render(context)
      %(<div class="github-widget" data-repo="#{@repository}"></div><script type="text/javascript" src="/assets/js/jquery.githubRepoWidget.js"></script>)
    end
  end
end

Liquid::Template.register_tag('githubrepo', Jekyll::GithubRepo)

