# encoding: utf-8

# Tag Cloud for Octopress
# =======================
#
# Syntax:
# -------
# {% tag_cloud [counter:true] %}
#
# Example:
# --------
# In some template files, you can add the following markups.
#
# ### source/_includes/custom/asides/tag_cloud.html ###
#
# <section>
# <h1>Tag Cloud</h1>
# <span id="tag-cloud">{% tag_cloud %}</span>
# </section>
#
# Notes:
# ------
# Be sure to insert above template files into `default_asides` array in `_config.yml`.
# And also you can define styles for 'tag-cloud' or 'category-list' in a `.scss` file.
# (ex: `sass/custom/_styles.scss`)
#
# Licence:
# --------
# Distributed under the [MIT License][MIT].
#
# [MIT]: http://www.opensource.org/licenses/mit-license.php
#
require 'rubygems'
require 'json'
require 'pathname'

module Jekyll

  class TagCloud < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @opts = {}
      if markup.strip =~ /\s*counter:(\w+)/i
        @opts['counter'] = ($1 == 'true')
        markup = markup.strip.sub(/counter:\w+/i,'')
      end
      super
    end

    def render(context)
      lists = {}
      max, min = 1, 1
      config = context.registers[:site].config
      category_dir = config['root'] + config['category_dir'] + '/'
      categories = context.registers[:site].categories
      categories.keys.sort_by{ |str| str.downcase }.each do |category|
        count = categories[category].count
        lists[category] = count
        max = count if count > max
      end

      li = []
      lists.each do | category, counter |
        nli = []
        url = category_dir + category.gsub(/_|\P{Word}/, '-').gsub(/-{2,}/, '-').downcase
        nli[0] = category + '[' + categories[category].count.to_s + ']'
        nli[1] = url
        if @opts['counter']
          nli[2] = categories[category].count
        else
          nli[2] = 8
        end
        li.push(nli)
      end
      f = File.open('%s/../source/javascripts/tag.json' % \
          Pathname.new(File.dirname(__FILE__)).realpath,'w')
      f.puts(JSON.dump(li))
      f.close()
    end
  end


end

Liquid::Template.register_tag('tag_cloud', Jekyll::TagCloud)