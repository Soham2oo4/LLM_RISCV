/*
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2019 Codasip s.r.o.
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the property of
 * Codasip s.r.o. and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and proprietary to
 * Codasip s.r.o. and are protected by trade secret and copyright law.  In addition, elements of the
 * technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 */

 /**
  * @author Jakub Varadinek
  */

angular.element(document).ready(function() {
  angular.bootstrap(document, ['CodasipApp']);
});

var app = angular.module('CodasipApp', ['ngJsTree', 'ui.ace', 'smart-table', 'ngSanitize', 'chart.js']);

app.controller('MainController', ['$scope', function($scope) {
    
	function addIDsToDecoders(asip){
		angular.forEach(asip.decoders, function(decoder, decoderIndex) {
			decoder._id = asip._id + "_decoder" + decoderIndex;
		});
	}

	angular.forEach(codasip_asips_data.asips, function(asip, asipIndex) {
		asip._id = "asip" + asipIndex;
		addIDsToDecoders(asip);

        angular.forEach(asip.cc_table_data, function(item) {
            item._short_location = item.location.substring(item.location.lastIndexOf("/model/"));
        });
    });

    this.getStudioVersion  = function () {
    	return codasip_asips_data.information.ide_version;
    }

    this.getArchitecture = function () {
    	return codasip_asips_data.information.architecture;
    }

    this.getDate = function () {
    	return codasip_asips_data.information.date;
    }

    this.getASIPs = function () {
    	return codasip_asips_data.asips;
    }

    this.isRunningInIDEjs = function (){
        if (typeof isRunningInIDE == 'function') {
            return isRunningInIDE();
        }
        return false;
    }

    this.fileLinkFormatter = function (value) {
        if (this.isRunningInIDEjs()){
            return '<a href="#" data-file-link="' + value + '" data-toggle="pill">' + value + '</a>';
        }
        return value;
    }

    this.isSourceCodeTabEnabled = function (asip) {
    	return asip.source_files != undefined && asip.source_files.files.length > 0;
    }

    this.isResourcesCoverageTabEnabled = function (asip) {
    	return (asip.basic_resources_table_data != undefined && asip.basic_resources_table_data.length > 0) || 
    			(asip.caches_table_data != undefined && asip.caches_table_data.length > 0) ||  
    			(asip.pipelines_table_data != undefined && asip.pipelines_table_data.length > 0);
    }

    this.isCodalCoverageTabEnabled = function (asip) {
    	return (asip.cc_table_data.length != undefined && asip.cc_table_data.length > 0) || 
    			(asip.cc_chart_data != undefined && asip.cc_chart_data.length > 0);
    }

    this.isSourceCodeCoverageTabEnabled = function (asip) {
    	return (asip.symbols_table_data != undefined && asip.symbols_table_data.length > 0) || 
    		   (asip.flat_model_table_data != undefined && asip.flat_model_table_data.length > 0) || 
    		   (asip.call_graph_table_data != undefined && asip.call_graph_table_data.length > 0) || 
    		   (asip.scc_chart_data != undefined && asip.scc_chart_data.length > 0) || 
    		   (asip.ass_table_data != undefined && asip.ass_table_data.length > 0);
    }
    
    this.isInstructionSetCoverageTabEnabled = function (asip) {
    	return asip.decoders != undefined && asip.decoders.length > 0
    }

    this.isPpaTabEnabled = function (asip) {
        return asip.ppa_data != undefined;
    }

    $scope.linkIDEFunc = function(loc) {
	    linkFiles(loc);
	}
}]);

app.controller('ScrollController', function($scope, $location, $anchorScroll) {
	$scope.scrollTo = function(id) {
		$location.hash(id);
		console.log($location.hash());
		$anchorScroll();
	};
});

app.directive('codasipTable', function() {
	return {
		link: link,
		scope: {},
		templateUrl: 'CodasipTable.html'
	};
});

app.directive('codasipChart', function() {
	function link(scope, element, attrs) {

		function ccLinesChartClick(event, mouseEvent) {
			var asipId = mouseEvent.target.dataset.asip;
			$("#codal-coverage-lines-table" + asipId + " tr.highlight").removeClass("highlight");
			if (event[0] != undefined){
				var label = event[0].label;
				var trs = $("#codal-coverage-lines-table" + asipId + " .tr_" + label);
				trs.addClass("highlight");
			}
	    };

	    function ccConditionsChartClick(event, mouseEvent) {
			var asipId = mouseEvent.target.dataset.asip;
			$("#codal-coverage-conditions-table" + asipId + " tr.highlight").removeClass("highlight");
			if (event[0] != undefined){
				var label = event[0].label;
				var trs = $("#codal-coverage-conditions-table" + asipId + " .tr_" + label);
				trs.addClass("highlight");
			}
	    };

	    function ccExpressionsChartClick(event, mouseEvent) {
			var asipId = mouseEvent.target.dataset.asip;
			$("#codal-coverage-expressions-table" + asipId + " tr.highlight").removeClass("highlight");
			if (event[0] != undefined){
				var label = event[0].label;
				var trs = $("#codal-coverage-expressions-table" + asipId + " .tr_" + label);
				trs.addClass("highlight");
			}
	    };

	    function iscChartClick(event, mouseEvent) {
			var asipId = mouseEvent.target.dataset.asip;
			var decoderId = mouseEvent.target.dataset.decoder;
			$("#top-by-usage-table" + decoderId + " tr.highlight").removeClass("highlight");
			$("#details-table-used" + decoderId + " tr.highlight").removeClass("highlight");
			if (event[0] != undefined){
				var label = event[0].label;
				var trs1 = $("#top-by-usage-table" + decoderId + " .tr_" + label);
				var trs2 = $("#details-table-used" + decoderId + " .tr_" + label);
				trs1.addClass("highlight");
				trs2.addClass("highlight");
			}
	    };

		function getChartData(holder, chartType){
            var chartData;
            var clickHandler;
			switch(chartType) {
				case "codalLineCoverage":
					chartData = holder.cc_lines_chart_data;
					clickHandler = ccLinesChartClick;
					break;
				case "codalConditionCoverage":
					chartData = holder.cc_conditions_chart_data;
					clickHandler = ccConditionsChartClick;
					break;
				case "codalExpressionCoverage":
					chartData = holder.cc_expressions_chart_data;
					clickHandler = ccExpressionsChartClick;
					break;
				case "sourceCodeCoverage":
					chartData = holder.scc_chart_data;
					break;
				case "instructionSetCoverage":
					chartData = holder.isc_chart_data;
					clickHandler = iscChartClick;
					break;
			}
			var labels = [];
			var data = [];
			chartData.forEach(function(entry) {
				labels.push(entry.markertag);
				data.push(entry.data);
			});
			return [labels, data, clickHandler];
		}

		scope.chartType = attrs.chartType;
		scope.asipId = attrs.asip;
		var holder = codasip_asips_data.asips.filter(function( obj ) {
			return obj._id == attrs.asip;
	    })[0];
		if (attrs.decoder != undefined){
			scope.decoderId = attrs.decoder;
			scope.identificator = attrs.decoder;
			holder = holder.decoders.filter(function( obj ) {
				return obj._id == attrs.decoder;
	    	})[0];
		} else {
			scope.identificator = attrs.asip;
		}
		var chartData = getChartData(holder, scope.chartType);


		scope.labels = chartData[0];
		scope.data = chartData[1];
		scope.chartClick = chartData[2];
		scope.options = {
	  		animation: true,
		    maintainAspectRatio: true,
		    responsive: true,
    		tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>\%",
		}
		scope.colors = ['#ADD8E6','#60BD68','#DECF3F','#F15854'];
	}

	return {
		link: link,
		scope: {},
		templateUrl: 'CodasipChart.html'
	};
});

app.controller('FilesCtrl', ['$log', '$scope', function filesCtrl($log, $scope) {
        var vm = this;

        vm.treeConfig = {
            core : {
                animation: true,
                error : function(error) {
                    $log.error('treeCtrl: error from js tree - ' + angular.toJson(error));
                },
                check_callback : true,
                worker : true
            },
            types : {
                "default" : {
                  	"valid_children" : ["default","file"]
                },
                "file" : {
                	"icon" : "jstree-file",
                  	"valid_children" : []
                }
            },
            version : 1,
            plugins : ['types']
        };

        $scope.aceLoaded = function(_editor){
		    $scope.editor = _editor;
		    $scope.editor.setTheme("ace/theme/eclipse");
	        $scope.editor.getSession().setMode("ace/mode/c_cpp");
	        $scope.editor.setReadOnly(true);
	        $scope.editor.setShowInvisibles(false);
	        $scope.editor.setDisplayIndentGuides();
	        $scope.editor.setFontSize(16);
	        $scope.editor.$blockScrolling = Infinity;
		};

		$scope.treeLoaded = function() {
			$scope.treeInstance.jstree('open_all');
    	};

    	function hideComments(editor, lines){
	        $.each(lines, function( index, value ) {
	            editor.getSession().foldAll(value.start, value.end);
	        });
	    }

    	$scope.treeActivateNode = function(e, data) {
    		var asip = e.target.dataset.asip;
    		if (data.node != undefined && data.node.type == "file"){
    			var asipData = codasip_asips_data.asips.filter(function( obj ) {
    				return obj._id == asip;
                });

                var result = asipData[0].source_files.files.filter(function( obj ) {
                    return obj.id == data.node.id;
                });

                $scope.editor.setValue(result[0].content, 0);
                $scope.editor.clearSelection();
                //window.onload = function () { hideComments(editor, result[0].fold) }
                hideComments($scope.editor, result[0].fold);
            }
    	};
}]);

app.filter('percent', function($sce) {
	return function(value) {
		return $sce.trustAsHtml('<div class="progress">' +
           '<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="' + value + '" aria-valuemin="0" aria-valuemax="100" style="width: ' + value + '%;">' + value + ' %</div>' + 
           '</div>');
	};
});