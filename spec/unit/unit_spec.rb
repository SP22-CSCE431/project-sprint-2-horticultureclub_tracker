require 'rails_helper'

RSpec.describe Event, type: :model do
    subject do
        described_class.new(type: 'Monthly Meeting', start_date: '2022-02-14', end_date: '2022-02-14', start_time: '5:00', end_time: '6:00', description: 'Monthly meeting for February', points: 10)
    end

    it 'is valid with all valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a type' do
        subject.type = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a start_date' do
        subject.start_date = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a description' do
        subject.description = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without points' do
        subject.points = nil
        expect(subject).not_to be_valid
    end

    it 'is valid without an end_date' do
        subject.end_date = nil
        expect(subject).to be_valid
    end

    it 'is valid without a start_time' do
        subject.start_time = nil
        expect(subject).to be_valid
    end
    it 'is valid without an end_time' do
        subject.end_time = nil
        expect(subject).to be_valid
    end
end