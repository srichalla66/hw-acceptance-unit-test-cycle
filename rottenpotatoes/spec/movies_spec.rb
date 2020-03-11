require 'rails_helper'

describe Movie do
    it 'should return nil ' do
        m = Movie.create(title: 'M')
        r = Movie.same_director(m.director)
        expect(r).to be_nil
    end
    it 'with same director' do
        m1 = Movie.create(title: 'M1', director: 'D')
        m2 = Movie.create(title: 'M1', director: 'D')
        r = Movie.same_director(m1.director)
        expect(r).to eq([m1, m2])
    end
end