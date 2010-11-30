# Breadcrumbs

A nice way to add breadcrumbs to your application. Antonio Cangiano posted a
link in the Ruby on Rails weblog to a post which talked about adding
breadcrumbs to your Rails application. I've been doing this with helpers, but
as the post says this is "Easy and flexible". So I've created the plugin.

## Installing

Add to your `Gemfile`:

    gem 'breadcrumbs', :git => 'https://github.com/fesplugas/rails-breadcrumbs.git'

## Usage

On your `app/controllers/application.rb`:

    class ApplicationController < ActionController::Base

      before_filter :set_initial_breadcrumbs

      add_breadcrumb 'Home', '/'

      private

      def set_initial_breadcrumbs
        add_breadcrumb _("Home"), :home_path
      end

    end

On your `app/controllers/categories_controller.rb`:

    class CaegoriesController < ApplicationController

      add_breadcrumb 'Things', :things_path
      add_breadcrumb 'Create a new thing', '', :only => [:new, :create]
      add_breadcrumb 'Edit a thing', '', :only => [:edit, :update]

      def show
        @thing = Thing.find(params[:id])
        add_breadcrumb @thing.name, ''
      end

    end

On your `app/views/layouts/application.html.erb`:

    <%= breadcrumbs %>
    <%= breadcrumbs("=>") %> <!-- You can define the separator you want -->

## Acknowledgments

- Przemyslaw Kowalczyk for his post http://szeryf.wordpress.com/2008/06/13/easy-and-flexible-breadcrumbs-for-rails/
- Original code by: Francesc Esplugas Marti
- Updated Syntax by Greg Bell: http://github.com/gregbell/simplified_breadcrumbs/tree/master

Copyright (c) 2008-2010 Francesc Esplugas Marti, released under the MIT license
