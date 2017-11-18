var $select = $('#select-tools').selectize({
					maxItems: '1',
					plugins: ['remove_button'],
				    persist: false,
					valueField: 'id',
					labelField: 'title',
					searchField: 'title',
					options: [
						{id: 1, title: 'Bucharest', url: 'http://en.wikipedia.org/wiki/Spectrometers'},
						{id: 2, title: 'Cluj', url: 'http://en.wikipedia.org/wiki/Star_chart'},
						{id: 3, title: 'Craiova', url: 'http://en.wikipedia.org/wiki/Electrical_tape'}
					],
					create: false
				});

				// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

				var control = $select[0].selectize;

				$('#button-clear').on('click', function() {
					control.clear();
				});

				$('#button-clearoptions').on('click', function() {
					control.clearOptions();
				});

var $select = $('#search-tools').selectize({
					options: [
					        {id: 'nomad', make: 'restaurant-name', model: 'Nomad'},
					        {id: 'caru-cu-bere', make: 'restaurant-name', model: 'Caru\' cu bere'},
					        {id: 'stadio', make: 'restaurant-name', model: 'Stadio'},
					        {id: 'van-gogh', make: 'restaurant-name', model: 'Van-Gogh'},
					        {id: 'ambasador', make: 'restaurant-name', model: 'Ambasador'},
					        {id: 'sky-bar', make: 'restaurant-name', model: 'Sky-bar'},
					        {id: 'pizza', make: 'food', model: 'Pizza'},
					        {id: 'burger', make: 'food', model: 'Burger'},
					        {id: 'salad', make: 'food', model: 'Salad'},
					        {id: 'beef', make: 'food', model: 'Beef'},
					        {id: 'soup', make: 'food', model: 'Soup'},
					        {id: 'pasta', make: 'food', model: 'Pasta'},
					        {id: 'fish', make: 'food', model: 'Fish'}
					    ],
					    optgroups: [
					        {$order: 3, id: 'restaurant-name', name: 'Restaurants'},
					        {$order: 2, id: 'food', name: 'Food'},
					    ],
					    maxItems: 7,
					    maxOptions: 3,
					    labelField: 'model',
					    valueField: 'id',
					    optgroupField: 'make',
					    optgroupLabelField: 'name',
					    optgroupValueField: 'id',
					    lockOptgroupOrder: true,
					    searchField: ['model'],
					    plugins: ['optgroup_columns']
				});

				// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

				var control = $select[0].selectize;

				$('#button-clear').on('click', function() {
					control.clear();
				});

				$('#button-clearoptions').on('click', function() {
					control.clearOptions();
				});