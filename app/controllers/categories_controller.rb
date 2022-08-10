# frozen_string_literal: true

class CategoriesController < ApplicationController
  def category; end

  def wallpainting
    @items = Add.where(categories: 'wall painting')
    render 'categories/category', locals: { items: @items }
    # controller/htmlpage
  end

  def statue
    @items = Add.where(categories: 'statue')
    render 'categories/category', locals: { items: @items }
  end

  def light
    @items = Add.where(categories: 'light')
    render 'categories/category', locals: { items: @items }
  end

  def wallclock
    @items = Add.where(categories: 'wall clocks')
    render 'categories/category', locals: { items: @items }
  end

  def antique
    @items = Add.where(categories: 'antique')
    render 'categories/category', locals: { items: @items }
  end

  def candleholder
    @items = Add.where(categories: 'candle holder')
    render 'categories/category', locals: { items: @items }
  end

  def shelfhanging
    @items = Add.where(categories: 'shelf hanging')
    render 'categories/category', locals: { items: @items }
  end
end
