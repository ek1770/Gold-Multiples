var $assets = "assets";//this will be used in fuelux.tree-sampledata.js


var DataSourceTree = function(options) {
	this._data 	= options.data;
	this._delay = options.delay;
}

DataSourceTree.prototype.data = function(options, callback) {
	var self = this;
	var $data = null;

	if(!("name" in options) && !("type" in options)){
		$data = this._data;//the root tree
		callback({ data: $data });
		return;
	}
	else if("type" in options && options.type == "folder") {
		if("additionalParameters" in options && "children" in options.additionalParameters)
			$data = options.additionalParameters.children;
		else $data = {}//no data
	}
	
	if($data != null)//this setTimeout is only for mimicking some random delay
		setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);

	//you can retrieve your data from a server using ajax call
};

var tree_data = {
	'clean-energy-technology' : {name: 'Clean Energy Technology', type: 'folder'}	,
	'construction-real-estate' : {name: 'Construction Real Estate', type: 'folder'}	,
	'consumer-products' : {name: 'Consumer Products', type: 'folder'}	,
	'energy-utilities' : {name: 'Energy Utilities', type: 'folder'}	,
	'financial' : {name: 'Financial', type: 'folder'}	,
	'healthcare' : {name: 'Healthcare', type: 'item'}	,
	'hospitality-leisure' : {name: 'Hospitality & Leisure', type: 'item'}	,
	'internet' : {name: 'Internet', type: 'item'},
	'manufacturing-industrial' : {name: 'Manufacturing & Industrial', type: 'item'},
	'media' : {name: 'Media', type: 'item'},
	'retail' : {name: 'Retail', type: 'item'},
	'services' : {name: 'Services', type: 'item'},
	'social-services-organizations' : {name: 'Social Services & Organizatiots', type: 'item'},
	'technology' : {name: 'Technology', type: 'item'},
	'transportation-warehousing-wholesale-distribution' : {name: 'Transportation Warehousing Wholesale Distribution', type: 'itTm'},
}
tree_data['clean-energy-technology']['additionalParameters'] = {
	'children' : {
		'batteries-energy-storage' : {name: 'Batteries & Energy Storage', type: 'item'},
		'biofuels' : {name: 'Biofuels', type: 'item'},
		'energy-conservation' : {name: 'Energy Conservation', type: 'item'},
		'geothermal-power' : {name: 'Geothermal Power', type: 'item'},
		'green-transportation' : {name: 'Green Transportation', type: 'item'},
		'hydrogen-power' : {name: 'hydrogen-power', type: 'item'},
		'hydropower-energy' : {name: 'Hydropower Energy', type: 'item'},
		'smart-grid' : {name: 'Smart Grid', type: 'item'},
		'solar-energy' : {name: 'Solar Energy', type: 'item'},
		'wind-energy' : {name: 'Wind Energy', type: 'item'},

	}
}
tree_data['construction-real-estate']['additionalParameters'] = {
	'children' : {
		'construction' : {name: 'Construction', type: 'folder'},
		'real-estate' : {name: 'Real Estate', type: 'item'},
		'boats' : {name: 'Boats', type: 'item'}
	}
}
tree_data['construction-real-estate']['additionalParameters']['children']['construction']['additionalParameters'] = {
	'children' : {
		'classics' : {name: 'Classics', type: 'item'},
		'convertibles' : {name: 'Convertibles', type: 'item'},
		'coupes' : {name: 'Coupes', type: 'item'},
		'hatchbacks' : {name: 'Hatchbacks', type: 'item'},
		'hybrids' : {name: 'Hybrids', type: 'item'},
		'suvs' : {name: 'SUVs', type: 'item'},
		'sedans' : {name: 'Sedans', type: 'item'},
		'trucks' : {name: 'Trucks', type: 'item'}
	}
}

tree_data['consumer-products']['additionalParameters'] = {
	'children' : {
		'apartments-rentals' : {name: 'Apartments', type: 'item'},
		'office-space-rentals' : {name: 'Office Space', type: 'item'},
		'vacation-rentals' : {name: 'Vacation Rentals', type: 'item'}
	}
}
tree_data['energy-utilities']['additionalParameters'] = {
	'children' : {
		'apartments' : {name: 'Apartments', type: 'item'},
		'villas' : {name: 'Villas', type: 'item'},
		'plots' : {name: 'Plots', type: 'item'}
	}
}
tree_data['financial']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['healthcare']['additionalParameters'] = {
	'children' : {
		'example' : {name: 'Example', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['hospitality-leisure']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['internet']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['manufacturing-industrial']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['media']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['retail']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['services']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['social-services-organizations']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['technology']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}

tree_data['transportation-warehousing-wholesale-distribution']['additionalParameters'] = {
	'children' : {
		'cats' : {name: 'Cats', type: 'item'},
		'dogs' : {name: 'Dogs', type: 'item'},
		'horses' : {name: 'Horses', type: 'item'},
		'reptiles' : {name: 'Reptiles', type: 'item'}
	}
}



var treeDataSource = new DataSourceTree({data: tree_data});











var tree_data_2 = {
	'pictures' : {name: 'Pictures', type: 'folder'}	,
	'music' : {name: 'Music', type: 'folder'}	,
	'video' : {name: 'Video', type: 'folder'}	,
	'documents' : {name: 'Documents', type: 'folder'}	,
	'backup' : {name: 'Backup', type: 'folder'}	,
	'readme' : {name: '<img src="'+$assets+'/icons/txt.png" /> ReadMe.txt', type: 'item'},
	'manual' : {name: '<img src="'+$assets+'/icons/html.png" /> Manual.html', type: 'item'}
}
tree_data_2['music']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/ogg.png" /> song1.ogg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/ogg.png" /> song2.ogg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/ogg.png" /> song3.ogg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/ogg.png" /> song4.ogg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/ogg.png" /> song5.ogg', type: 'item'}
	]
}
tree_data_2['video']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/divx.png" /> movie1.avi', type: 'item'},
		{name: '<img src="'+$assets+'/icons/divx.png" /> movie2.avi', type: 'item'},
		{name: '<img src="'+$assets+'/icons/divx.png" /> movie3.avi', type: 'item'},
		{name: '<img src="'+$assets+'/icons/divx.png" /> movie4.avi', type: 'item'},
		{name: '<img src="'+$assets+'/icons/divx.png" /> movie5.avi', type: 'item'}
	]
}
tree_data_2['pictures']['additionalParameters'] = {
	'children' : {
		'wallpapers' : {name: 'Wallpapers', type: 'folder'},
		'camera' : {name: 'Camera', type: 'folder'}
	}
}
tree_data_2['pictures']['additionalParameters']['children']['wallpapers']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/jpg.png" /> wallpaper1.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> wallpaper2.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> wallpaper3.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> wallpaper4.jpg', type: 'item'}
	]
}
tree_data_2['pictures']['additionalParameters']['children']['camera']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo1.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo2.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo3.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo4.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo5.jpg', type: 'item'},
		{name: '<img src="'+$assets+'/icons/jpg.png" /> photo6.jpg', type: 'item'}
	]
}


tree_data_2['documents']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/pdf.png" /> document1.pdf', type: 'item'},
		{name: '<img src="'+$assets+'/icons/doc.png" /> document2.doc', type: 'item'},
		{name: '<img src="'+$assets+'/icons/doc.png" /> document3.doc', type: 'item'},
		{name: '<img src="'+$assets+'/icons/pdf.png" /> document4.pdf', type: 'item'},
		{name: '<img src="'+$assets+'/icons/doc.png" /> document5.doc', type: 'item'}
	]
}

tree_data_2['backup']['additionalParameters'] = {
	'children' : [
		{name: '<img src="'+$assets+'/icons/zip.png" /> backup1.zip', type: 'item'},
		{name: '<img src="'+$assets+'/icons/zip.png" /> backup2.zip', type: 'item'},
		{name: '<img src="'+$assets+'/icons/zip.png" /> backup3.zip', type: 'item'},
		{name: '<img src="'+$assets+'/icons/zip.png" /> backup4.zip', type: 'item'}
	]
}
var treeDataSource2 = new DataSourceTree({data: tree_data_2});